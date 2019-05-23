Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957AB27BEA
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 May 2019 13:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HalQX+8Uh5CYD5LXF/TXOLZxm7G29wTRn3D0V0RoNy4=; b=dduabzrY55MzOk
	iw1qy56wPStqfPUC70oa79w2z9hFZ5/vLJK8eR9e2RKQjBeVAbqSCcswvDSrm+riDmvV7KnR44Usw
	J5HLWIrntzRdmstyWQK6snhns/4tx6FCmgqZutSu5vsXJdNr4eA3z3iSrkC9TYocz5pRbmbOeEoYJ
	WoM3KrS42ngKEClxICu+98GWtMYARsWl4bEapDTPmtIiwcICqlz05tLr34uqRQI4pO78CMcgLaAkn
	7k/ZY1mLjTSVo2Ixmp1MlTQ68KqQSx+YdgcmYQ/du/OOSI6Bi8xCy2PQ6TVGApAx8WYj0pqktdV39
	4zRewoinlps/JlSXks4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTm1f-0008Tg-5d; Thu, 23 May 2019 11:36:47 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTm1Y-0008Sf-5x
 for openwrt-devel@lists.openwrt.org; Thu, 23 May 2019 11:36:42 +0000
X-Originating-IP: 139.18.242.240
Received: from [172.24.187.150] (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id BBA9A1BF205;
 Thu, 23 May 2019 11:36:37 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190522172419.20630-1-mail@aparcar.org>
 <20190523103035.GD4606@meh.true.cz>
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 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
Message-ID: <3e67359e-14ab-1596-2ec9-e08b38d63d9d@aparcar.org>
Date: Thu, 23 May 2019 13:36:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523103035.GD4606@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_043640_544890_F81858DE 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] procd: add docker support
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

SGksCgpPbiA1LzIzLzE5IDEyOjMwIFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IEknbSB3b25k
ZXJpbmcgaWYgdGhpcyBEb2NrZXIgcmVsYXRlZCBjaGFuZ2VzIHNob3VsZG4ndCBiZSBpbmNsdWRl
ZCBhcyBhIHBhcnQKPiBvZiBhIHBhdGNoIHNlcmllcyB3aGljaCB3b3VsZCBhZGQgY29tcGxldGUg
RG9ja2VyIHN1cHBvcnQgdG8gT3BlbldydCAoZG8geW91Cj4gcGxhbiB0byBkbyB0aGlzPyksIHNv
IGl0IGNvdWxkIGJlIHRlc3RlZCB0b2dldGhlci4KPgo+IE9yIGlzIGl0IG5vdyBwb3NzaWJsZSB0
byBqdXN0IGRvd25sb2FkIE9wZW5XcnQgaW1hZ2UgYW5kIHVzZSBpdCBpbnNpZGUgdGhlCj4gRG9j
a2VyIGFzIGl0IGlzPwpUaGUgbGF0dGVyLCBydW5uaW5nIE9wZW5XcnQgd2l0aGluIGEgRG9ja2Vy
IGNvbnRhaW5lciAoZm9yIENJKS4gSSdtCmF3YXJlIG9mIHRoZSBkb2NrZXItY2UgcGFja2FnZSBw
b3J0aW5nLCBob3dldmVyIGRpZCBub3QgZG8gYW55dGhpbmcgaW4KdGhpcyBhcmVhLgo+PiBUaGUg
YWRkaXRpb25hbCBleGl0KDApIHRyZWF0bWVudCBpbiBzdGF0ZS5jIGlzIGJhc2VkIG9uIEBtaWtt
YSBjb2RlWzBdLgo+PiBJdCBzaG91bGQgZml4IHN0b3BwaW5nIHByb2JsZW1zIG9mIGNvbnRhaW5l
cnMuCj4+Cj4+IFswXTogaHR0cHM6Ly9naXRodWIuY29tL21pa21hL2x4ZC1vcGVud3J0L2Jsb2Iv
bWFzdGVyL3BhdGNoZXMvcHJvY2QtbWFzdGVyLzAwMDMtZG9ja2VyLWZpeC1wcm9ibGVtLXN0b3Bw
aW5nLWNvbnRhaW5lci5wYXRjaAo+IFRoaXMgcGF0Y2ggbG9va3MgbGlrZSBhIGhhY2ssIHdoaWNo
IHdhcyBwcm9iYWJseSBqdXN0IGNoZXJyeS1waWNrZWQgd2l0aG91dAo+IGFjdHVhbGx5IGxvb2tp
bmcgaW50byB0aGUgc3Vycm91bmRpbmcgY29kZS4gU2VlIGJlbGxvdy4KPgo+PiAtLS0gYS9jb250
YWluZXIuaAo+PiArKysgYi9jb250YWluZXIuaAo+PiBAQCAtMTYsOSArMTYsMTEgQEAKPj4gIAo+
PiAgI2luY2x1ZGUgPHN0ZGxpYi5oPgo+PiAgI2luY2x1ZGUgPHN0ZGJvb2wuaD4KPj4gKyNpbmNs
dWRlIDxzeXMvc3RhdC5oPgo+PiAgCj4+ICBzdGF0aWMgaW5saW5lIGJvb2wgaXNfY29udGFpbmVy
KCkgewo+PiAtCXJldHVybiAhIWdldGVudigiY29udGFpbmVyIik7Cj4+ICsJc3RydWN0IHN0YXQg
czsKPj4gKwlyZXR1cm4gISFnZXRlbnYoImNvbnRhaW5lciIpIHx8ICEhc3RhdCgiLy5kb2NrZXJp
bml0IiwgJnMpOwo+PiAgfQo+IEhhdmUgeW91IG5vdGljZWQgIlJlbW92ZSBkb2NrZXJpbml0IG9u
Y2UgYW5kIGZvciBhbGwiWzFdPwoKTm8sIHRoYW5rcyBmb3IgdGhlIGxpbmsuIFNlZW1zIHRoYXQg
RG9ja2VyIG5vdyB1c2VzIExYQyBhbnl3YXkgd2hpY2gKcmVzdWx0cyBpbiB0aGUgYXZhaWxhYmls
aXR5IG9mIGNvbnRhaW5lcj1seGMgaW4gL3Byb2MvMS9lbnZpcm9uOgoKwqDCoMKgIHJvb3RAZGY5
OTkyZTRjNTE4Oi8jIGNhdCAvcHJvYy8xL2Vudmlyb24KwqDCoMKgCkhPU1ROQU1FPWRmOTk5MmU0
YzUxOFNITFZMPTFIT01FPS9yb290Y29udGFpbmVyPWx4Y1RFUk09eHRlcm1QQVRIPS91c3Ivc2Jp
bjovdXNyL2Jpbjovc2JpbjovYmluUFdEPS9yb290QGRmOTk5MmU0YzUxODovIwoKCk1lYW5pbmcs
IHRoZSB3aG9sZSBwYXRjaCBpcyBzdXBlcmZsdW91cyEKCj4+IC0tLSBhL3N0YXRlLmMKPj4gKysr
IGIvc3RhdGUuYwo+PiBAQCAtMjEsNiArMjEsNyBAQAo+PiAgI2luY2x1ZGUgPHNpZ25hbC5oPgo+
PiAgCj4+ICAjaW5jbHVkZSAicHJvY2QuaCIKPj4gKyNpbmNsdWRlICJjb250YWluZXIuaCIKPj4g
ICNpbmNsdWRlICJzeXNsb2cuaCIKPj4gICNpbmNsdWRlICJwbHVnL2hvdHBsdWcuaCIKPj4gICNp
bmNsdWRlICJ3YXRjaGRvZy5oIgo+PiBAQCAtMTU3LDYgKzE1OCw5IEBAIHN0YXRpYyB2b2lkIHN0
YXRlX2VudGVyKHZvaWQpCj4+ICAJCWVsc2UKPj4gIAkJCUxPRygiLSByZWJvb3QgLVxuIik7Cj4+
ICAKPj4gKwkJaWYgKGlzX2NvbnRhaW5lcigpKQo+PiArCQkJZXhpdCgwKTsKPiBpZiB5b3UgbG9v
ayBhdCB0aGF0IGZpbGUsIHlvdSdsbCBub3RpY2UgZm9sbG93aW5nOgo+Cj4gICNpZm5kZWYgRElT
QUJMRV9JTklUCj4gICAgICAgICAgICAgICAgIC4uLgo+ICAjZWxzZQo+IAkJZXhpdCgwKTsKPiAg
I2VuZGlmCj4KPiB3aGljaCBtYWtlcyBtZSB3b25kZXIgaWYgdGhpcyBpcyBwcm9wZXIgYXBwcm9h
Y2ggYXMgbWF5YmUgdGhlIHByb3BlciBmaXggd291bGQKPiBiZSBjb252ZXJzaW9uIG9mIGNvbXBp
bGUgdGltZSBESVNBQkxFX0lOSVQgZnVuY3Rpb25hbGl0eSBpbnRvIHJ1bnRpbWUgb25lLAo+IHNv
bWV0aGluZyBsaWtlIGZvbGxvd2luZzogCj4KPiAgaW5saW5lIGJvb2wgaXNfaW5pdF9kaXNhYmxl
ZCgpCj4gIHsKPiAgI2lmZGVmIERJU0FCTEVfSU5JVAo+IAlyZXR1cm4gdHJ1ZTsKPiAgI2Vsc2UK
PiAJcmV0dXJuIGlzX2NvbnRhaW5lcigpOwo+ICAjZW5kaWYKPiAgfQo+Cj4gSXQgc2VlbXMgbGlr
ZSB0aGF0IERJU0FCTEVfSU5JVCB0b3VjaGVzIG1vcmUgcGFydHMgb2YgcHJvY2Qgd2hpY2ggcHJv
YmFibHkKPiBzaG91bGQgYmUgY29uc2lkZXJlZCBpbiBjYXNlIGlmIHByb2NkIGlzIHJ1bm5pbmcg
aW4gY29udGFpbmVyIGFzIHdlbGwgKG9yCj4gbWF5YmUgbm90KToKPgo+ICAkIGdpdCBncmVwIERJ
U0FCTEVfSU5JVAo+Cj4gIHBsdWcvaG90cGx1Zy5oOiNpZm5kZWYgRElTQUJMRV9JTklUCj4gIHNp
Z25hbC5jOiNpZm5kZWYgRElTQUJMRV9JTklUCj4gIHNpZ25hbC5jOiNpZm5kZWYgRElTQUJMRV9J
TklUCj4gIHN0YXRlLmM6I2lmbmRlZiBESVNBQkxFX0lOSVQKPiAgd2F0Y2hkb2cuaDojaWZuZGVm
IERJU0FCTEVfSU5JVAo+Cj4gVGhpcyB3aWxsIHByb2JhYmx5IGluY3VyIG1vcmUgd29yaywgYnV0
IGl0IHdpbGwgbGlrZWx5IHJlc3VsdCBpbiBhIHByb3Blcgo+IHNvbHV0aW9uLgoKVGhhbmtzLCBJ
J2xsIGxvb2sgaW50byB0aGF0LiBBcyBJIHVuZGVyc3RhbmQsIHRoZSBjb250YWluZXJzIGRvbid0
IG5lZWQKKmluaXQqLCBidXQgdGhlIGRlYWN0aXZhdGlvbiB3b3VsZCBiZSByZXF1aXJlZCBvbiBy
dW4gdGltZSwgbm90PwoKVGhhbmtzIGZvciB5b3UgdGltZSwKUGF1bAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
