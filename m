Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C7A1E3049
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 22:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IuKGGdPmcNJMakOHn0MGATn/hx0cgrKBI2Khr5hpOwo=; b=Puht/fDCIYR0Gc40bj9Og7wBd
	IhLC/iHqMEare66TTBeeU477wuF45Q3uDRtA2QZVobLXiVZTTSFhxqxPTq9/qLZ9kWIDUQf0BXyox
	eET2TQ18tSoKEx4+/EPajpGr7NCNOHwVbyA1DB+9ap2vW2jxNHyvjTtxoeuDoSpHNtvoGRBD367Mg
	yXdn0EyLRnubyl3IeWk8U0lU75oi0rkxoWTrWKqBCvdr9L9zeciULhRtuqMTcmhkWIPqov2DbgQxO
	bg+FJJZgQX0jFqD1C07V+JiyodTPaVtibYeHRFuP0Jiv6JyniEoHEaMI1VEESsCyloOhuz3woQd52
	1yViRc8lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgXb-00042V-8o; Tue, 26 May 2020 20:51:15 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgXS-000423-CN
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 20:51:09 +0000
Received: from [2a04:4540:1400:c300:a884:1641:239b:72cb]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jdgXO-0002Sb-Qt; Tue, 26 May 2020 22:51:03 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200526200102.15470-1-ynezz@true.cz>
From: John Crispin <john@phrozen.org>
Message-ID: <592b89f2-66ce-0d33-0996-bd4c601a1efd@phrozen.org>
Date: Tue, 26 May 2020 22:51:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200526200102.15470-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_135106_580690_3928E54D 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] generic: fix flow table hw offload
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjYuMDUuMjAgMjI6MDEsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gRnJvbTogSm9obiBDcmlz
cGluIDxqb2huQHBocm96ZW4ub3JnPgo+IAo+IE1ha2UgdGhlIGRyaXZlciB3b3JrIHdpdGggcmVj
ZW50IHVwc3RyZWFtIGNoYW5nZXMuCj4gCj4gRml4ZXM6IEZTIzI2MzIKPiBSZWY6IGh0dHBzOi8v
Z2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8yODE1Cj4gU2lnbmVkLW9mZi1ieTogSm9o
biBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPgo+IChjaGVycnkgcGlja2VkIGZyb20gY29tbWl0
IDY3ODZkYzI2YTIwNWRhNTVlYzJkOTc3MTY5M2NkZmI5OWU3NTZlNTkpCj4gLS0tCnRoYW5rcywg
ZmVlbCBmcmVlIHRvIGNvbW1pdC4KQWNrZWQtYnk6IEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVu
Lm9yZz4KPiAgIC4uLndfdGFibGUtc3VwcG9ydC1ody1vZmZsb2FkLXRocm91Z2gtdi5wYXRjaCB8
IDMzICsrKysrKysrKystLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25z
KCspLCAxNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVy
aWMvcGVuZGluZy00LjE0LzY0MS1uZXRmaWx0ZXItbmZfZmxvd190YWJsZS1zdXBwb3J0LWh3LW9m
ZmxvYWQtdGhyb3VnaC12LnBhdGNoIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0
LzY0MS1uZXRmaWx0ZXItbmZfZmxvd190YWJsZS1zdXBwb3J0LWh3LW9mZmxvYWQtdGhyb3VnaC12
LnBhdGNoCj4gaW5kZXggOTMxMTcyNTM0NjZiLi5lMWIxM2ExYWQ0OTEgMTAwNjQ0Cj4gLS0tIGEv
dGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzY0MS1uZXRmaWx0ZXItbmZfZmxvd190
YWJsZS1zdXBwb3J0LWh3LW9mZmxvYWQtdGhyb3VnaC12LnBhdGNoCj4gKysrIGIvdGFyZ2V0L2xp
bnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzY0MS1uZXRmaWx0ZXItbmZfZmxvd190YWJsZS1zdXBw
b3J0LWh3LW9mZmxvYWQtdGhyb3VnaC12LnBhdGNoCj4gQEAgLTc5LDcgKzc5LDcgQEAgU2lnbmVk
LW9mZi1ieTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPgo+ICAgIHN0cnVjdCBuZl9mbG93
X3JvdXRlIHsKPiAgIC0tLSBhL25ldC9uZXRmaWx0ZXIvbmZfZmxvd190YWJsZV9ody5jCj4gICAr
KysgYi9uZXQvbmV0ZmlsdGVyL25mX2Zsb3dfdGFibGVfaHcuYwo+IC1AQCAtMTksNDggKzE5LDc1
IEBAIHN0cnVjdCBmbG93X29mZmxvYWRfaHcgewo+ICtAQCAtMTksNDggKzE5LDc3IEBAIHN0cnVj
dCBmbG93X29mZmxvYWRfaHcgewo+ICAgIAllbnVtIGZsb3dfb2ZmbG9hZF90eXBlCXR5cGU7Cj4g
ICAgCXN0cnVjdCBmbG93X29mZmxvYWQJKmZsb3c7Cj4gICAgCXN0cnVjdCBuZl9jb25uCQkqY3Q7
Cj4gQEAgLTkyLDYgKzkyLDcgQEAgU2lnbmVkLW9mZi1ieTogRmVsaXggRmlldGthdSA8bmJkQG5i
ZC5uYW1lPgo+ICAgLXN0YXRpYyBpbnQgZG9fZmxvd19vZmZsb2FkX2h3KHN0cnVjdCBuZXQgKm5l
dCwgc3RydWN0IGZsb3dfb2ZmbG9hZCAqZmxvdywKPiAgIC0JCQkgICAgICBpbnQgdHlwZSkKPiAg
ICtzdGF0aWMgdm9pZCBmbG93X29mZmxvYWRfY2hlY2tfZXRoZXJuZXQoc3RydWN0IGZsb3dfb2Zm
bG9hZF90dXBsZSAqdHVwbGUsCj4gKysJCQkJCXN0cnVjdCBkc3RfZW50cnkgKmRzdCwKPiAgICsJ
CQkJCXN0cnVjdCBmbG93X29mZmxvYWRfaHdfcGF0aCAqcGF0aCkKPiAgICB7Cj4gICAtCXN0cnVj
dCBuZXRfZGV2aWNlICppbmRldjsKPiBAQCAtMTEyLDcgKzExMyw3IEBAIFNpZ25lZC1vZmYtYnk6
IEZlbGl4IEZpZXRrYXUgPG5iZEBuYmQubmFtZT4KPiAgICAKPiAgIC0JZGV2X3B1dChpbmRldik7
Cj4gICArCW1lbWNweShwYXRoLT5ldGhfc3JjLCBwYXRoLT5kZXYtPmRldl9hZGRyLCBFVEhfQUxF
Tik7Cj4gLSsJbiA9IGRzdF9uZWlnaF9sb29rdXAodHVwbGUtPmRzdF9jYWNoZSwgJnR1cGxlLT5z
cmNfdjQpOwo+ICsrCW4gPSBkc3RfbmVpZ2hfbG9va3VwKGRzdCwgJnR1cGxlLT5zcmNfdjQpOwo+
ICAgKwlpZiAoIW4pCj4gICArCQlyZXR1cm47Cj4gICAgCj4gQEAgLTEyNSw2ICsxMjYsNyBAQCBT
aWduZWQtb2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Cj4gICAtc3RhdGljIHZv
aWQgZmxvd19vZmZsb2FkX2h3X3dvcmtfYWRkKHN0cnVjdCBmbG93X29mZmxvYWRfaHcgKm9mZmxv
YWQpCj4gICArc3RhdGljIGludCBmbG93X29mZmxvYWRfY2hlY2tfcGF0aChzdHJ1Y3QgbmV0ICpu
ZXQsCj4gICArCQkJCSAgIHN0cnVjdCBmbG93X29mZmxvYWRfdHVwbGUgKnR1cGxlLAo+ICsrCQkJ
CSAgIHN0cnVjdCBkc3RfZW50cnkgKmRzdCwKPiAgICsJCQkJICAgc3RydWN0IGZsb3dfb2ZmbG9h
ZF9od19wYXRoICpwYXRoKQo+ICAgIHsKPiAgIC0Jc3RydWN0IG5ldCAqbmV0Owo+IEBAIC0xMzgs
NyArMTQwLDcgQEAgU2lnbmVkLW9mZi1ieTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPgo+
ICAgKwkJcmV0dXJuIC1FTk9FTlQ7Cj4gICArCj4gICArCXBhdGgtPmRldiA9IGRldjsKPiAtKwlm
bG93X29mZmxvYWRfY2hlY2tfZXRoZXJuZXQodHVwbGUsIHBhdGgpOwo+ICsrCWZsb3dfb2ZmbG9h
ZF9jaGVja19ldGhlcm5ldCh0dXBsZSwgZHN0LCBwYXRoKTsKPiAgICAKPiAgIC0JbmV0ID0gcmVh
ZF9wbmV0KCZvZmZsb2FkLT5mbG93X2h3X25ldCk7Cj4gICAtCXJldCA9IGRvX2Zsb3dfb2ZmbG9h
ZF9odyhuZXQsIG9mZmxvYWQtPmZsb3csIEZMT1dfT0ZGTE9BRF9BREQpOwo+IEBAIC0xNjYsMTEg
KzE2OCwxMSBAQCBTaWduZWQtb2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Cj4g
ICArCS8qIHJlc3RvcmUgZGV2aWNlcyBpbiBjYXNlIHRoZSBkcml2ZXIgbWFuZ2xlZCB0aGVtICov
Cj4gICArCW9mZmxvYWQtPnNyYy5kZXYgPSBzcmNfZGV2Owo+ICAgKwlvZmZsb2FkLT5kZXN0LmRl
diA9IGRlc3RfZGV2Owo+IC0rCj4gLSsJcmV0dXJuIHJldDsKPiAtK30KPiAgICAKPiAgIC0JZG9f
Zmxvd19vZmZsb2FkX2h3KG5ldCwgb2ZmbG9hZC0+ZmxvdywgRkxPV19PRkZMT0FEX0RFTCk7Cj4g
KysJcmV0dXJuIHJldDsKPiArK30KPiArKwo+ICAgK3N0YXRpYyB2b2lkIGZsb3dfb2ZmbG9hZF9o
d19mcmVlKHN0cnVjdCBmbG93X29mZmxvYWRfaHcgKm9mZmxvYWQpCj4gICArewo+ICAgKwlkZXZf
cHV0KG9mZmxvYWQtPnNyYy5kZXYpOwo+IEBAIC0xODIsNyArMTg0LDcgQEAgU2lnbmVkLW9mZi1i
eTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPgo+ICAgIH0KPiAgICAKPiAgICBzdGF0aWMg
dm9pZCBmbG93X29mZmxvYWRfaHdfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gLUBA
IC03MywxOCArMTAwLDIyIEBAIHN0YXRpYyB2b2lkIGZsb3dfb2ZmbG9hZF9od193b3JrKHN0cnVj
dAo+ICtAQCAtNzMsMTggKzEwMiwyMiBAQCBzdGF0aWMgdm9pZCBmbG93X29mZmxvYWRfaHdfd29y
ayhzdHJ1Y3QKPiAgICAJc3Bpbl91bmxvY2tfYmgoJmZsb3dfb2ZmbG9hZF9od19wZW5kaW5nX2xp
c3RfbG9jayk7Cj4gICAgCj4gICAgCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShvZmZsb2FkLCBu
ZXh0LCAmaHdfb2ZmbG9hZF9wZW5kaW5nLCBsaXN0KSB7Cj4gQEAgLTIxMSw3ICsyMTMsNyBAQCBT
aWduZWQtb2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Cj4gICAgCX0KPiAgICB9
Cj4gICAgCj4gLUBAIC05NywyMCArMTI4LDU1IEBAIHN0YXRpYyB2b2lkIGZsb3dfb2ZmbG9hZF9x
dWV1ZV93b3JrKHN0cnUKPiArQEAgLTk3LDIwICsxMzAsNTYgQEAgc3RhdGljIHZvaWQgZmxvd19v
ZmZsb2FkX3F1ZXVlX3dvcmsoc3RydQo+ICAgIAlzY2hlZHVsZV93b3JrKCZuZl9mbG93X29mZmxv
YWRfaHdfd29yayk7Cj4gICAgfQo+ICAgIAo+IEBAIC0yMjAsMTcgKzIyMiwxOCBAQCBTaWduZWQt
b2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Cj4gICArewo+ICAgKwlzdHJ1Y3Qg
Zmxvd19vZmZsb2FkX2h3X3BhdGggc3JjID0ge307Cj4gICArCXN0cnVjdCBmbG93X29mZmxvYWRf
aHdfcGF0aCBkZXN0ID0ge307Cj4gLSsJc3RydWN0IGZsb3dfb2ZmbG9hZF90dXBsZSAqdHVwbGU7
Cj4gKysJc3RydWN0IGZsb3dfb2ZmbG9hZF90dXBsZSAqdHVwbGVfcywgKnR1cGxlX2Q7Cj4gICAr
CXN0cnVjdCBmbG93X29mZmxvYWRfaHcgKm9mZmxvYWQgPSBOVUxMOwo+ICAgKwo+ICAgKwlyY3Vf
cmVhZF9sb2NrX2JoKCk7Cj4gICArCj4gLSsJdHVwbGUgPSAmZmxvdy0+dHVwbGVoYXNoW0ZMT1df
T0ZGTE9BRF9ESVJfT1JJR0lOQUxdLnR1cGxlOwo+IC0rCWlmIChmbG93X29mZmxvYWRfY2hlY2tf
cGF0aChuZXQsIHR1cGxlLCAmc3JjKSkKPiArKwl0dXBsZV9zID0gJmZsb3ctPnR1cGxlaGFzaFtG
TE9XX09GRkxPQURfRElSX09SSUdJTkFMXS50dXBsZTsKPiArKwl0dXBsZV9kID0gJmZsb3ctPnR1
cGxlaGFzaFtGTE9XX09GRkxPQURfRElSX1JFUExZXS50dXBsZTsKPiArKwo+ICsrCWlmIChmbG93
X29mZmxvYWRfY2hlY2tfcGF0aChuZXQsIHR1cGxlX3MsIHR1cGxlX2QtPmRzdF9jYWNoZSwgJnNy
YykpCj4gICArCQlnb3RvIG91dDsKPiAgICsKPiAtKwl0dXBsZSA9ICZmbG93LT50dXBsZWhhc2hb
RkxPV19PRkZMT0FEX0RJUl9SRVBMWV0udHVwbGU7Cj4gLSsJaWYgKGZsb3dfb2ZmbG9hZF9jaGVj
a19wYXRoKG5ldCwgdHVwbGUsICZkZXN0KSkKPiArKwlpZiAoZmxvd19vZmZsb2FkX2NoZWNrX3Bh
dGgobmV0LCB0dXBsZV9kLCB0dXBsZV9zLT5kc3RfY2FjaGUsICZkZXN0KSkKPiAgICsJCWdvdG8g
b3V0Owo+ICAgKwo+ICAgKwlpZiAoIXNyYy5kZXYtPm5ldGRldl9vcHMtPm5kb19mbG93X29mZmxv
YWQpCj4gQEAgLTI3MCw3ICsyNzMsNyBAQCBTaWduZWQtb2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxu
YmRAbmJkLm5hbWU+Cj4gICAgCj4gICAgCWZsb3dfb2ZmbG9hZF9xdWV1ZV93b3JrKG9mZmxvYWQp
Owo+ICAgIH0KPiAtQEAgLTExOSwxNCArMTg1LDExIEBAIHN0YXRpYyB2b2lkIGZsb3dfb2ZmbG9h
ZF9od19kZWwoc3RydWN0IG4KPiArQEAgLTExOSwxNCArMTg4LDExIEBAIHN0YXRpYyB2b2lkIGZs
b3dfb2ZmbG9hZF9od19kZWwoc3RydWN0IG4KPiAgICB7Cj4gICAgCXN0cnVjdCBmbG93X29mZmxv
YWRfaHcgKm9mZmxvYWQ7Cj4gICAgCj4gQEAgLTI4Niw3ICsyODksNyBAQCBTaWduZWQtb2ZmLWJ5
OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Cj4gICAgCj4gICAgCWZsb3dfb2ZmbG9hZF9x
dWV1ZV93b3JrKG9mZmxvYWQpOwo+ICAgIH0KPiAtQEAgLTE1MywxMiArMjE2LDggQEAgc3RhdGlj
IHZvaWQgX19leGl0IG5mX2Zsb3dfdGFibGVfaHdfbW9kdQo+ICtAQCAtMTUzLDEyICsyMTksOCBA
QCBzdGF0aWMgdm9pZCBfX2V4aXQgbmZfZmxvd190YWJsZV9od19tb2R1Cj4gICAgCW5mX2Zsb3df
dGFibGVfaHdfdW5yZWdpc3RlcigmZmxvd19vZmZsb2FkX2h3KTsKPiAgICAJY2FuY2VsX3dvcmtf
c3luYygmbmZfZmxvd19vZmZsb2FkX2h3X3dvcmspOwo+ICAgIAo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
