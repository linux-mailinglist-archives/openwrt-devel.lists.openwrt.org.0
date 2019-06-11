Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CB53D244
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 18:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wZbYYh/x81NjpYhStiG+jRbJmktZDtG2KGIM3OIvdA=; b=NFkFHBjC4pAcZD
	0xpoWVlRM/+1NiF/vY8YdPUGvT79BJTB1wbAMSkICTqGRoQeJFiBMyNK3t2PZpRYbVcBbTGVZDnil
	Q7XkFsg5n3QKwnD/sjkFxVelPyaCEClt7Q3JztjlpgmFJIzYeMOqfSDqzrDnT+qpJAG4q8mbXxbTb
	bnsSF0d0kcAiVQ0rnjBfKFtz+4f3qSuHGC7WNYthSw55z8kHm3EGd3TQS1jeEfVlh0niEW5ify1LU
	hxNiozE2fbd9DmBKWsj+f02AnUz1Si4fCNal7e2vhgSnHAA14Id85XOBNDdG5bmgEGCwxLDynEeP7
	lSZnv+xyp44vVdKL+ELw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajek-0000HZ-Tn; Tue, 11 Jun 2019 16:29:55 +0000
Received: from mail1.systemli.org ([198.167.223.214])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajea-0000FZ-60
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 16:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1560270576;
 bh=6affFtjcOObjwjXsdtRvhMr7eV8c5s68U6QGUIA4F+A=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=za9cnXIbQp62Hsx5Ev0tbMq9v1YLI1J1+6ixVLu07KjQfcw+Ooh1XmkNRiIBp2UWh
 50u6noSd4ZAQhw3lo2JHm5H7XfhwldVzDkrbfN3bKj2RNoThHajAnTvEnp/dd/TGUk
 hxDaHArrbddA/3m4bDeJCyau2aeG4EawtzvyySNB8TBjKNyMq6oegBE2SeQXfBMdfV
 xrTHrwPLDy8uN2oahc3i7Ei+LQTgbITiM4larGWSmF/G7kpqI3sjs6Zm1OQPmDMntW
 wAAyJU2oKND9lq8aRl5AKztmgL68FO5kT8Av9LRYQQE5zj3C0VBsv/lx3OeoRk88t1
 r3JWOHiGsyEkQ==
To: openwrt-devel@lists.openwrt.org
References: <ff9d8076-6c33-4cd4-1fa2-2b236d4556ac@systemli.org>
 <f8492525-d73a-32ad-babd-4c574fa5f7a4@phrozen.org>
From: Nick <vincent@systemli.org>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent@systemli.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <879eb0b3-3dc4-339b-8401-4823390502c2@systemli.org>
Date: Tue, 11 Jun 2019 18:29:34 +0200
MIME-Version: 1.0
In-Reply-To: <f8492525-d73a-32ad-babd-4c574fa5f7a4@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_092944_695046_76A4A237 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.167.223.214 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Extending iwinfo to set interface to monitor
 mode
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

aXcgaGFzIG5vIGMgbGlicmFyeS4gU28gaWYgeW91IHdhbnQgdG8gZG8gYXV0b21hdGljYWxseSBz
d2l0Y2hpbmcgb3IKc3R1ZmYgbGlrZSB0aGlzLCBJIGRpcmVjdGx5IHdvdWxkIGhhdmUgdG8gdXNl
IG5sODAyMTEuCldvdWxkIGJlIG5pY2UgdG8gc3BsaXQgaXcgaW50byBhIGxpYml3IGFuZCBjbWQg
aXcgb3Igc29tZXRoaW5nIGxpa2UgdGhpcy4KCkJlc3RzLApOaWNrCgpPbiAyMS4wNS4xOSAxOToz
NCwgSm9obiBDcmlzcGluIHdyb3RlOgo+Cj4gT24gMjEvMDUvMjAxOSAxNzo0NCwgTmljayB3cm90
ZToKPj4gSWYgSSBleHRlbmQgaXdpbmZvIHRvIGFsbG93IHNldHRpbmcgaW50ZXJmYWNlcyBpbnRv
IG1vbml0b3IgbW9kZSwgd2lsbAo+PiBpdCBiZSBleGNlcHRlZD8KPj4gT3IgaXMgaXdpbmZvIGp1
c3QgZm9yIGdldHRpbmcgaW5mb3JtYXRpb24gZm9yIGFuIGludGVyZmFjZT8KPj4KPj4gSSB1c2Ug
bGliaXdpbmZvIGZvciBhYnN0cmFjdGlvbiBmb3IgbXkgb3duIGRhZW1vbnMuCj4+Cj4+IEJlc3Rz
LAo+PiBOaWNrCj4KPgo+IGl3aW5mbyBpcyBkZXNpZ25lZCBmb3IgaW50cm9zcGVjdGlvbiBvZiB0
aGUgaW50ZXJmYWNlcyByYXRoZXIgdGhhbgo+IGNvbmZpZ3VyYXRpb24uIHlvdSBzaG91bGQgdXNl
IHRoZSBpdyB0b29sIGZvciB0aGF0Cj4KPiDCoMKgwqAgSm9obgo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
