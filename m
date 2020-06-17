Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AB11FD64C
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 22:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4fxFKe+nHv6mGDnAPMxbJQ9nt7YmU01uOzQXNDKryk=; b=HloAG+2yPJ0uHv
	xmvROp1hHidQ9rdJhrnZJjKgqote8Md+lE7ga9KKqbY+4z7Yyuklc1ATXNzK24bjvGVRTAEPFQ6gs
	8Hp0MYQ7MGOfSjL2ykhnF8g1jfHXnCDOTgkUnLCyCRpwHV8ptVYWbhA8t9WLrNOXMj8Ihm9evAZP2
	IzMwgA2naitgo4wIXrnXlJ6eL0/OTcrtSqGo+UHkfzYa/y/9mpEZ0v8S0DRK0Vjs/A4NqsLo9vGqB
	Cvopa6CYK/lLHPLIS756+/O0YfPHtLg9YqqLmE1QxVnj46CbN43eat2EL2SUFufnq/ripYOSc2JBW
	J3rYG0yL+tXHgjRxgUOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlevx-0003VS-Lx; Wed, 17 Jun 2020 20:45:21 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlevo-0003V1-SN
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 20:45:14 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id b68333d1;
 Wed, 17 Jun 2020 20:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=date:from:to
 :cc:subject:message-id:references:mime-version:content-type
 :content-transfer-encoding:in-reply-to; s=mail; bh=eWQhk8zJwht/G
 /oilvcodqKSWV0=; b=vro3vFZoOrj5MGf8OidubiAKbo2sPtOmqXoTmdUuey97P
 +yoO7sSMvc5/YXOhZ9WJlubAmnMFrwxZJGZbYGZAowufHxU+SUWR7yFm4RnH1/dz
 trhhxf+exVii9gFK8WRgfBZ0bI07acSTIfVXEhqE5+SghuvW7bW4KzC/VDhXl0JO
 QRQHuYqr3tqRXC14FnxrfyR4SBOXm5bzo1Z1rCnVMzqLrWrGl7cVrcHzmZQZ6dsz
 Fr31BqDUpVFczNlaJJ25pm0UVI/ilJaccBPA0M3xCZVCy9gJSrST4iva3EuBukHO
 qfT9rv5vFWy4j4zDKbBIU61PU3LGKIWntOUf+bJCA==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id a7760fad
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Wed, 17 Jun 2020 20:27:03 +0000 (UTC)
Date: Wed, 17 Jun 2020 14:45:10 -0600
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Message-ID: <20200617204510.GA396261@zx2c4.com>
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
 <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
 <CAHmME9p51XvLEZ7QbDreEXym34S4XZZaRotAv4aRiT5D4Pz3XA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHmME9p51XvLEZ7QbDreEXym34S4XZZaRotAv4aRiT5D4Pz3XA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_134513_073162_7D5AA564 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7
 Thumb-2]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMDI6MzM6NDlQTSAtMDYwMCwgSmFzb24gQS4gRG9uZW5m
ZWxkIHdyb3RlOgo+IFNvLCBzb21lIG1vcmUgcmVzZWFyY2g6IGl0IGxvb2tzIGxpa2UgdGhlIFJf
QVJNX1RITV9KVU1QMTEgc3ltYm9sIGlzCj4gYWN0dWFsbHkgd2dfcGFja2V0X3NlbmRfc3RhZ2Vk
X3BhY2tldHMsIGEgYm9yaW5nIEMgZnVuY3Rpb24gd2l0aAo+IG5vdGhpbmcgZmFuY3kgYWJvdXQg
aXQuIFRoYXQgZ2l0aHViIGlzc3VlIHlvdSBwb2ludGVkIHRvIHN1Z2dlc3RlZAo+IHRoYXQgaXQg
bWlnaHQgaGF2ZSBzb21ldGhpbmcgdG8gZG8gd2l0aCBjb21wbGV4IGNyeXB0byBmdW5jdGlvbnMs
IGJ1dAo+IGl0IGxvb2tzIGxpa2UgdGhhdCdzIG5vdCB0aGUgY2FzZS4gd2dfcGFja2V0X3NlbmRf
c3RhZ2VkX3BhY2tldHMgaXMKPiBwbGFpbiBvbGQgYm9yaW5nIEMuCj4gCj4gQnV0IHRoZXJlIGlz
IG9uZSBpbnRlcmVzdGluZyB0aGluZyBhYm91dAo+IHdnX3BhY2tldF9zZW5kX3N0YWdlZF9wYWNr
ZXRzOiBpdCdzIGRlZmluZWQgaW4gc2VuZC5jLCBhbmQgY2FsbGVkIGZyb20KPiBzZW5kLmMsIHJl
Y2VpdmUuYywgZGV2aWNlLmMsIGFuZCBuZXRsaW5rLmMgLS0gZm91ciBwbGFjZXMuIFdoYXQgSQo+
IHN1c3BlY3QgaXMgaGFwcGVuaW5nIGlzIHRoYXQgdGhlIGxpbmtlciBjYW4ndCBxdWl0ZSBmaWd1
cmUgb3V0IGhvdyB0bwo+IG9yZGVyIHRoZSBmdW5jdGlvbnMgaW4gdGhlIGZpbmFsIGV4ZWN1dGFi
bGUgc28gdGhhdCB0aGUKPiB3Z19wYWNrZXRfc2VuZF9zdGFnZWRfcGFja2V0cyBkZWZpbml0aW9u
IGlzIHN1ZmZpY2llbnRseSBjbG9zZSB0byBhbGwKPiBvZiBpdHMgY2FsbCBzaXRlcywgc28gaXQg
dGhlbiBuZWVkcyB0byBhZGQgdGhhdCBleHRyYSB0cmFtcG9saW5lCj4gbWlkd2F5IHRvIGdldCB0
byBpdC4gU3R1cGlkIGxpbmtlci4gSSdtIHBsYXlpbmcgbm93IGlmIHRoZXJlJ3Mgc29tZQo+IG1h
bnVhbCByZW9yZGVyaW5nIEkgY2FuIGRvIGluIHRoZSBidWlsZCBzeXN0ZW0gc28gdGhhdCB0aGlz
IGlzbid0IGEKPiBwcm9ibGVtLCBidXQgSSdtIG5vdCB2ZXJ5IG9wdGltaXN0aWMgdGhhdCBJJ2xs
IHN1Y2NlZWQuCgpMb29rcyBsaWtlIG15IGV4cGxhbmF0aW9uIHRoZXJlIHdhc24ndCAxMDAlIGFj
Y3VyYXRlLCBidXQgaXQgZG9lcyBzZWVtCmxpa2UgdGhlIGlzc3VlIG9jY3VycyB3aGVuIGdjYyBz
ZWVzIGEgY2xlYXIgdGFpbCBjYWxsIHRoYXQgaXQgY2FuCm9wdGltaXplIGludG8gYSBCIGluc3Ry
dWN0aW9uIGluc3RlYWQgb2YgYSBCTCBpbnN0cnVjdGlvbi4KClRoZSBiZWxvdyBwYXRjaCBhdm9p
ZHMgdGhhdCwgYW5kIHRodXMgZml4ZXMgeW91ciBpc3N1ZSwgdXNpbmcgYSBwcmV0dHkKYmFkIHRy
aWNrIHRoYXQncyBub3QgcmVhbGx5IHN1aXRhYmxlIGZvciBiZWluZyBjb21taXR0ZWQgYW55d2hl
cmUsIGJ1dAppdCBpcyBwZXJoYXBzIGxlYWRpbmcgdXMgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbjoK
CmRpZmYgLS1naXQgYS9zcmMvc2VuZC5jIGIvc3JjL3NlbmQuYwppbmRleCA4MjhiMDg2YS4uNGJi
NjkxMWYgMTAwNjQ0Ci0tLSBhL3NyYy9zZW5kLmMKKysrIGIvc3JjL3NlbmQuYwpAQCAtMjIxLDYg
KzIyMSw4IEBAIHN0YXRpYyBib29sIGVuY3J5cHRfcGFja2V0KHN0cnVjdCBza19idWZmICpza2Is
IHN0cnVjdCBub2lzZV9rZXlwYWlyICprZXlwYWlyLArCoCDCoCDCoHNpbWRfY29udGV4dCk7CsKg
fQrCoAordm9sYXRpbGUgY2hhciBkdW1teTsKKwrCoHZvaWQgd2dfcGFja2V0X3NlbmRfa2VlcGFs
aXZlKHN0cnVjdCB3Z19wZWVyICpwZWVyKQrCoHsKwqAgc3RydWN0IHNrX2J1ZmYgKnNrYjsKQEAg
LTI0MCw2ICsyNDIsNyBAQCB2b2lkIHdnX3BhY2tldF9zZW5kX2tlZXBhbGl2ZShzdHJ1Y3Qgd2df
cGVlciAqcGVlcikKwqAgfQrCoArCoCB3Z19wYWNrZXRfc2VuZF9zdGFnZWRfcGFja2V0cyhwZWVy
KTsKKyBkdW1teSA9IC0xOwrCoH0KwqAKwqBzdGF0aWMgdm9pZCB3Z19wYWNrZXRfY3JlYXRlX2Rh
dGFfZG9uZShzdHJ1Y3Qgc2tfYnVmZiAqZmlyc3QsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
