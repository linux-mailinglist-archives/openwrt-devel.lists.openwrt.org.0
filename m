Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC6DF3737
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 19:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0nlE6N/Z5+mZcHxfB+W1tJ82Eqsq4pyH3/A2xqj2ydk=; b=PEZC32nJR4rJ5WfYz23Z2uA5w
	0BgfOQn5V2HMXNyun9njcML5KWT+s42rI9eWxb56bdt5Ahk2xm74jCntuueTGs67YW+M6dWDFa4XV
	5tRbdML2TmFCgrxf8AgUriYFJiIM3hz2shC+3z+1/C8BDoweYc6tZ4X9E1Aolu2yUQ5bliAKldvUd
	3QmDXrvbeqWy9YR/WALpZN58kEs5x5j3HlZdqq6Ehxvi1gizAIdYTRE0mHQph19ugt1JO4io9+sfl
	Ta449SnDVil+5EFXsItV44+Ewj5UKlPGmYN83UhorWhSLlDRVGo3uFxcT5x6lu/EKWJLkRRLbYOZW
	MIQTaUC+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSmWb-0005KD-Th; Thu, 07 Nov 2019 18:28:53 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSmWR-0005Im-C9
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 18:28:45 +0000
X-Originating-IP: 72.234.165.80
Received: from [192.168.200.110] (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 27D8F1C0004;
 Thu,  7 Nov 2019 18:28:31 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20191107140903.21731-1-ynezz@true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <a01819f8-06a4-7456-c84c-98c09928d645@aparcar.org>
Date: Thu, 7 Nov 2019 08:28:28 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191107140903.21731-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_102843_549323_BE6EC110 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] build: image: add common and
 reproducible IMG_PART_SIGNATURE variable
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
Cc: openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhhbmsgeW91IGZvciByZXdvcmtpbmcgdGhpcyEgRGFuaWVsIGFscmVhZHkgdG9sZCBtZSB0aGF0
IGEgZmFsbGJhY2sgaXMgCnJlcXVpcmVkIGlmIFNPVVJDRV9EQVRFX0VQT0NIIGlzIHVuc2V0LCB0
aGlzIGxvb2tzIGxpa2UgYSBjbGVhbiBzb2x1dGlvbi4KCk9uIDExLzcvMTkgNDowOSBBTSwgUGV0
ciDFoHRldGlhciB3cm90ZToKPiBGcm9tOiBQYXVsIFNwb29yZW4gPG1haWxAYXBhcmNhci5vcmc+
Cj4KPiB4ODYsIG12ZWJ1IGFuZCB0ZWdyYSB0YXJnZXRzIGFyZSBjdXJyZW50bHkgdXNpbmcgbW9y
ZSBvciBsZXNzIHNhbWUKPiBTSUdOQVRVUkUgdmFyaWFibGUgd2hpY2ggcHJvdmlkZXMgdW5pcXVl
IHBhcnRpdGlvbiBJRC9zaWduYXR1cmUsIHNvIGl0Cj4gbWFrZXMgc2Vuc2UgdG8gcmVmYWN0b3Ig
aXQgb3V0IGludG8gY29tbW9uIHZhcmlhYmxlIHdoaWNoIGNvdWxkIGJlCj4gcmV1c2VkIGJ5IGFs
bCB0YXJnZXRzLiAgV2hpbGUgYXQgaXQsIG1ha2UgdGhlIGNvbnRlbnQgb2YgdGhlIHZhcmlhYmxl
Cj4gcmVwcm9kdWNpYmxlLgo+Cj4gUmVmOiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBl
cm1haWwvb3BlbndydC1kZXZlbC8yMDE5LU1hcmNoLzAxNjE0OC5odG1sCj4gU2lnbmVkLW9mZi1i
eTogUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPgo+IFN1Z2dlc3RlZC1ieTogSm8tUGhp
bGlwcCBXaWNoIDxqb0BtZWluLmlvPgo+IFtyZW5hbWVkIHRvIElNR19QQVJUU0lHTkFUVVJFLCBy
ZXdvcmtlZCB3aXRoIGVwb2NoK3Zlcm1hZ2ljIGhhc2hdCj4gU2lnbmVkLW9mZi1ieTogUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiAtLS0KPiAgIGluY2x1ZGUvaW1hZ2UubWsgfCAxICsK
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvaW1hZ2UubWsgYi9pbmNsdWRlL2ltYWdlLm1rCj4gaW5kZXggNzdkNDU2NzE5NzExLi44NzU1
YzQ4MzJhYmQgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9pbWFnZS5tawo+ICsrKyBiL2luY2x1ZGUv
aW1hZ2UubWsKPiBAQCAtNDQsNiArNDQsNyBAQCBJTUdfUFJFRklYX1ZFUkNPREU6PSQoaWYgJChD
T05GSUdfVkVSU0lPTl9DT0RFX0ZJTEVOQU1FUyksJChjYWxsIHNhbml0aXplLCQoVkVSUwo+ICAg
SU1HX1BSRUZJWDo9JChWRVJTSU9OX0RJU1RfU0FOSVRJWkVEKS0kKElNR19QUkVGSVhfVkVSTlVN
KSQoSU1HX1BSRUZJWF9WRVJDT0RFKSQoSU1HX1BSRUZJWF9FWFRSQSkkKEJPQVJEKSQoaWYgJChT
VUJUQVJHRVQpLC0kKFNVQlRBUkdFVCkpCj4gICBJTUdfUk9PVEZTOj0kKElNR19QUkVGSVgpLXJv
b3Rmcwo+ICAgSU1HX0NPTUJJTkVEOj0kKElNR19QUkVGSVgpLWNvbWJpbmVkCj4gK0lNR19QQVJU
X1NJR05BVFVSRTo9JChzaGVsbCBlY2hvICQoU09VUkNFX0RBVEVfRVBPQ0gpJChMSU5VWF9WRVJN
QUdJQykgfCBta2hhc2ggbWQ1IHwgaGVhZCAtLWJ5dGVzIDgpCj4gICAKPiAgIE1LRlNfREVWVEFC
TEVfT1BUIDo9IC1EICQoSU5DTFVERV9ESVIpL2RldmljZV90YWJsZS50eHQKPiAgIAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
