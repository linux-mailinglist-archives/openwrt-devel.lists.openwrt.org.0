Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127DD91220
	for <lists+openwrt-devel@lfdr.de>; Sat, 17 Aug 2019 20:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwC6Jn73xoR9KnpaJoQLFYCMwvVb0yh6bEqYc/OUlVY=; b=lcPjWGcm7kkAT2
	ZhfwyrXLuMHvBJcTs8EzCEK4QLk0aLIGyxeHOtrl1s5ufQ27pUkU2VNiYG1+AMtDYkei5NcMvHLog
	eD7IXibqIrSui/XsrQ6vhX9t0Q1aSbdT9y4KZDN3h6WmTMuJyiPvUSDzbMgJgWjR+b92PARa3Afu6
	sNfrktMKGOUrR6zKzaLq4DHyLtewhnaCyTWdWvsg9WJ7bcXajB1URoiNnO21bs3bKZR2jotLa66cD
	MWeZ/CJvSzoGyCl7p0ol6n3SMzzzz5eygIJkKtTNm00yseXkcvNpToPuIsUbQA7fjyWl40R6R1PzB
	lg9uUreXMXbpFeNnfpaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz304-0007MW-AJ; Sat, 17 Aug 2019 18:00:24 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz2zl-0006AF-TO
 for openwrt-devel@lists.openwrt.org; Sat, 17 Aug 2019 18:00:08 +0000
Received: (qmail 7864 invoked from network); 17 Aug 2019 17:59:56 -0000
Received: from localhost (HELO ?IPv6:2a02:790:ff:921:bb3a:fa11:9acd:2d8d?)
 (127.0.0.1)
 by achernar.uberspace.de with SMTP; 17 Aug 2019 17:59:56 -0000
To: Serge Vasilugin <vasilugin@yandex.ru>, openwrt-devel@lists.openwrt.org
References: <e0eb9887-28eb-a008-96e2-66d4de81ff11@yandex.ru>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <bf9b65ec-42d1-e663-6325-041a21694d08@ironai.com>
Date: Sat, 17 Aug 2019 19:59:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e0eb9887-28eb-a008-96e2-66d4de81ff11@yandex.ru>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_110006_252942_7DA02822 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] kernel: rtl8366_smi: explicitly set
 phy addr for switch
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

SGkgU2VyZ2UsCgp0aGFuayB5b3UgdmVyeSBtdWNoIGZvciB0aGlzIGNvbnRyaWJ1dGlvbi4gSSBj
YW4gb25seSBnaXZlIHNvbWUgY29zbWV0aWMKYWR2aWNlLiBJJ20gbm90IHN1cmUgYWJvdXQgdGhl
IGZ1bmN0aW9uYWxpdHkuCgpPbiAxNS4wOC4xOSAxMDoyNywgU2VyZ2UgVmFzaWx1Z2luIHdyb3Rl
Ogo+IEJ5IGRlZmF1bHQgcnRsODM2Nl9zbWkgdXNlIHBoeSBhZGRyIDAgYXQgbWlpLWJ1cyB0byBh
Y2Nlc3Mgc3dpdGNoIHJlZ2lzdGVycy4KPiBUaGlzIHBhdGNoIGFsbG93IHRvIHNldCBpdCBleHBs
aWNpdGx5IGluIGR0cy1maWxlOgo+IAo+IMKgwqDCoMKgcnRsODM2NyB7Cj4gwqDCoMKgwqDCoMKg
wqAgY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0bDgzNjdiIjsKPiDCoMKgwqDCoMKgwqDCoCBwaHlf
aWQgPSA8Mjk+OyAvKiBzd2l0Y2ggYWRkcmVzcyBhdCBtaWktYnVzICovCj4gwqDCoMKgwqDCoMKg
wqAgcmVhbHRlayxleHRpZjIgPSA8MSAwIDEgMSAxIDEgMSAxIDI+Owo+IMKgwqDCoMKgwqDCoMKg
IG1paS1idXMgPSA8Jm1kaW8+Owo+IMKgwqDCoMKgwqDCoMKgIGNwdS1wb3J0ID0gPDc+Owo+IMKg
wqDCoMKgfQo+IAo+IFVzZSBkZWZhdWx0IDAgYWRkcmVzcyBpZiBub3Qgc2V0Lgo+IEJhY2t3YXJk
IGNvbXBhdGliaWxpdHkgdGVzdGVkIG9uIHRwbGluayBhcmNoZXIgYzIgdjEgKHJ0bDgzNjdyYiBz
d2l0Y2gpCj4gCj4gU2lnbmVkLW9mZi1ieTogU2VyZ2UgVmFzaWx1Z2luIDx2YXNpbHVnaW5AeWFu
ZGV4LnJ1Pgo+IAo+IC0tLSBhL3RhcmdldC9saW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvbmV0
L3BoeS9ydGw4MzY2X3NtaS5jCj4gKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJp
dmVycy9uZXQvcGh5L3J0bDgzNjZfc21pLmMKPiBAQCAtMjU2LDcgKzI1Niw3IEBAIHN0YXRpYyBp
bnQgX19ydGw4MzY2X3NtaV9yZWFkX3JlZyhzdHJ1Y3QgcnRsODM2Nl9zbWkgKnNtaSwgdTMyIGFk
ZHIsIHUzMiAqZGF0YSkKPiAKPiDCoGludCBfX3J0bDgzNjZfbWRpb19yZWFkX3JlZyhzdHJ1Y3Qg
cnRsODM2Nl9zbWkgKnNtaSwgdTMyIGFkZHIsIHUzMiAqZGF0YSkKPiDCoHsKPiAtwqDCoMKgIHUz
MiBwaHlfaWQgPSBNRENfUkVBTFRFS19QSFlfQUREUjsKPiArwqDCoMKgIHUzMiBwaHlfaWQgPSBz
bWktPnBoeV9pZDsKPiDCoMKgwqDCoCBzdHJ1Y3QgbWlpX2J1cyAqbWJ1cyA9IHNtaS0+ZXh0X21i
dXM7Cj4gCj4gwqDCoMKgwqAgQlVHX09OKGluX2ludGVycnVwdCgpKTsKPiBAQCAtMjkzLDcgKzI5
Myw3IEBAIGludCBfX3J0bDgzNjZfbWRpb19yZWFkX3JlZyhzdHJ1Y3QgcnRsODM2Nl9zbWkgKnNt
aSwgdTMyIGFkZHIsIHUzMiAqZGF0YSkKPiAKPiDCoHN0YXRpYyBpbnQgX19ydGw4MzY2X21kaW9f
d3JpdGVfcmVnKHN0cnVjdCBydGw4MzY2X3NtaSAqc21pLCB1MzIgYWRkciwgdTMyIGRhdGEpCj4g
wqB7Cj4gLcKgwqDCoCB1MzIgcGh5X2lkID0gTURDX1JFQUxURUtfUEhZX0FERFI7Cj4gK8KgwqDC
oCB1MzIgcGh5X2lkID0gc21pLT5waHlfaWQ7Cj4gwqDCoMKgwqAgc3RydWN0IG1paV9idXMgKm1i
dXMgPSBzbWktPmV4dF9tYnVzOwo+IAo+IMKgwqDCoMKgIEJVR19PTihpbl9pbnRlcnJ1cHQoKSk7
Cj4gQEAgLTE1NTgsNiArMTU1OCwxMiBAQCBpbnQgcnRsODM2Nl9zbWlfcHJvYmVfb2Yoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldiwgc3RydWN0IHJ0bDgzNjZfc21pICpzbWkpCj4gwqDCoMKg
wqDCoMKgwqDCoCBnb3RvIHRyeV9ncGlvOwo+IMKgwqDCoMKgIH0KPiAKPiArwqDCoMKgIG9mX3By
b3BlcnR5X3JlYWRfdTMyKG5wLCAicGh5X2lkIiwgJnNtaS0+cGh5X2lkKTsKPiArwqDCoMKgIGlm
KHNtaS0+cGh5X2lkIDwgMCkgewo+ICvCoMKgwqDCoMKgwqDCoCBzbWktPnBoeV9pZCA9IE1EQ19S
RUFMVEVLX1BIWV9BRERSOwo+ICvCoMKgwqAgfQoKUGxlYXNlIGFkZCBhIG5ld2xpbmUgaGVyZS4K
Cj4gK8KgwqDCoCBkZXZfaW5mbygmcGRldi0+ZGV2LAo+ICvCoMKgwqDCoMKgwqDCoCAic3dpdGNo
IHBoeSBhZGRyPSVkXG4iLCBzbWktPnBoeV9pZCk7CgpQbGVhc2UgYWRkIGEgbmV3bGluZSBoZXJl
LgoKPiDCoMKgwqDCoCByZXR1cm4gMDsKPiAKPiDCoHRyeV9ncGlvOgo+IC0tLSBhL3RhcmdldC9s
aW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvbmV0L3BoeS9ydGw4MzY2X3NtaS5oCj4gKysrIGIv
dGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9uZXQvcGh5L3J0bDgzNjZfc21pLmgK
PiBAQCAtNjQsNiArNjQsNyBAQCBzdHJ1Y3QgcnRsODM2Nl9zbWkgewo+IMKgwqDCoMKgIHU4wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBkYmdfdmxhbl80a19wYWdlOwo+IMKgI2VuZGlmCj4gwqDCoMKg
wqAgc3RydWN0IG1paV9idXPCoMKgwqDCoMKgwqDCoCAqZXh0X21idXM7Cj4gK8KgwqDCoCBpbnQg
cGh5X2lkOwoKdTMyIGhlcmU/Cgo+IMKgfTsKPiAKPiDCoHN0cnVjdCBydGw4MzY2X3ZsYW5fbWMg
ewo+IC0tLQo+IHNlcmdlCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo+IAoKUmVnYXJkcywKClZpbmNlbnQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
