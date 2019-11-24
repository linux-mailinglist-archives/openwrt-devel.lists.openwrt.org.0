Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DBC108589
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 00:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:MIME-Version:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q4YnP5dXQSSsdw0vL9gI9eIHTLOP1y/Cwjm7eHR6Amw=; b=i9qIyc4WSVonS4s550QWfJ16w
	VGGZSZ2YgSMAmJnLx70jaSdvEmK/c/kduxCciiujJFxaq+y2cG53FUdonxIzb2X2w6I6ApwT2Acao
	KO7w5XnJBgn1gD3AR6BtBA5KfbuOG0GkpNNRPQlxnq3o44jCEgnRn2U9gI06uHibmrfo5GTEnWjIW
	asldBXwEOUwvBbQdDFLMu2kP7Ez/t/5ErRA+ESSt55666YGJIkzTq2sVepD1K4z1sLYlF7z2DYYC9
	aq1rXSRLlyfeDUcFlknUGwHeNv0HmyPrb2pecglgC0dS749U/Qd0aGEOkGrHfM2blyUXwCaZX+7Bo
	PY9Tjmi5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ1K3-00053k-2R; Sun, 24 Nov 2019 23:29:43 +0000
Received: from linuxlounge.net ([88.198.164.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ1Jv-000536-QH
 for openwrt-devel@lists.openwrt.org; Sun, 24 Nov 2019 23:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=darmstadt.freifunk.net;
 s=mail; t=1574638167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MGW/gdg1Wu6EvSlwtHSl3eMlTAlRFt/tUo4iDwDX2KE=;
 b=kiQvc3DPZdoDyTjkGxqqLi9bvCYS2GOcVb1McvZTmcTUDzykWF4afj1JFqLpvdxNIfbbeh
 1vUKClh6GpA0LArTl/ZHlIUrq8/cwCRzYoU469xNrjaiCld/bELhlDnGcxUJXr+wyKSbor
 ICdxyT6wOgvUvxIOx1K99aG7Cgl4lGE5YFPK+DGqB0bnygFyZE0Qf9FbKDvkuSahQpLAic
 XuFQmAcG/gNHuEdgI5Tidp9DlnDvx/tu9F0RTOa21Bj3UcVW2nz8On13kTuNGhoo5pempF
 K1yathOvEM0iiUYzMU0Z/e1nUkphjQUVjR1HedOP8A+ly/X8o3S2sLoeU4diAw==
To: openwrt-devel@lists.openwrt.org
References: <20191124222140.26553-1-mail@david-bauer.net>
From: Martin Weinelt <martin@darmstadt.freifunk.net>
Message-ID: <4ae17e71-9cd6-2f7a-f99c-db3310ff65a6@darmstadt.freifunk.net>
Date: Mon, 25 Nov 2019 00:29:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
In-Reply-To: <20191124222140.26553-1-mail@david-bauer.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_152936_294124_644EC1C6 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [88.198.164.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] generic ar8xxx: increase VLAN table for
 AR83x7
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
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGVzdGVkLWJ5OiBNYXJ0aW4gV2VpbmVsdCA8bWFydGluQGxpbnV4bG91bmdlLm5ldD4KCk9uIDEx
LzI0LzE5IDExOjIxIFBNLCBEYXZpZCBCYXVlciB3cm90ZToKPiBUaGUgQXRoZXJvcyBBUjgzMjcg
YW5kIEFSODMzNyBoYXZlIChhY2NvcmRpbmcgdG8gdGhlaXIgZGF0YXNoZWV0KSBhCj4gVkxBTiB0
YWJsZSB3aXRoIGEgbWF4aW11bSBvZiA0MDk2IGVudHJpZXMuCj4gCj4gQ3VycmVudGx5LCB0aGVy
ZSdzIGEgaGFyZCBsaW1pdCBvZiAxMjggVkxBTnMsIHdoaWNoIGlzIHRoZSBzYW1lIGFzCj4gZm9y
IG1vc3Qgb3RoZXIgQXRoZXJvcyBzd2l0Y2hlcy4gSW5jcmVhc2UgdGhpcyBsaW1pdCBvbmx5IGZv
ciB0aGUKPiBBUjgzeDcgc2VyaWVzIGFuZCBtb2RpZnkgc29tZSBzaGFyZWQgZnVuY3Rpb25zIHRv
IGFsbG93IHRoZW0gdG8gd29yawo+IHdpdGggYSB2YXJpYWJsZSBtYXggVkxBTiBjb3VudC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBCYXVlciA8bWFpbEBkYXZpZC1iYXVlci5uZXQ+Cj4gLS0t
Cj4gICB0YXJnZXQvbGludXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL25ldC9waHkvYXI4MjE2LmMg
fCAxMCArKysrKy0tLS0tCj4gICB0YXJnZXQvbGludXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL25l
dC9waHkvYXI4MjE2LmggfCAgOCArKysrKystLQo+ICAgdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmls
ZXMvZHJpdmVycy9uZXQvcGh5L2FyODMyNy5jIHwgIDQgKystLQo+ICAgMyBmaWxlcyBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS90YXJn
ZXQvbGludXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL25ldC9waHkvYXI4MjE2LmMgYi90YXJnZXQv
bGludXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL25ldC9waHkvYXI4MjE2LmMKPiBpbmRleCA2ODMy
NDFjZjFjLi41YWNlNGUwYjE1IDEwMDY0NAo+IC0tLSBhL3RhcmdldC9saW51eC9nZW5lcmljL2Zp
bGVzL2RyaXZlcnMvbmV0L3BoeS9hcjgyMTYuYwo+ICsrKyBiL3RhcmdldC9saW51eC9nZW5lcmlj
L2ZpbGVzL2RyaXZlcnMvbmV0L3BoeS9hcjgyMTYuYwo+IEBAIC0xMjA0LDcgKzEyMDQsNyBAQCBh
cjh4eHhfc3dfc2V0X3ZpZChzdHJ1Y3Qgc3dpdGNoX2RldiAqZGV2LCBjb25zdCBzdHJ1Y3Qgc3dp
dGNoX2F0dHIgKmF0dHIsCj4gICB7Cj4gICAJc3RydWN0IGFyOHh4eF9wcml2ICpwcml2ID0gc3dk
ZXZfdG9fYXI4eHh4KGRldik7Cj4gICAKPiAtCWlmICh2YWwtPnBvcnRfdmxhbiA+PSBBUjhYMTZf
TUFYX1ZMQU5TKQo+ICsJaWYgKHZhbC0+cG9ydF92bGFuID49IGRldi0+dmxhbnMpCj4gICAJCXJl
dHVybiAtRUlOVkFMOwo+ICAgCj4gICAJcHJpdi0+dmxhbl9pZFt2YWwtPnBvcnRfdmxhbl0gPSB2
YWwtPnZhbHVlLmk7Cj4gQEAgLTEyMzcsNyArMTIzNyw3IEBAIGFyOHh4eF9zd19nZXRfcG9ydHMo
c3RydWN0IHN3aXRjaF9kZXYgKmRldiwgc3RydWN0IHN3aXRjaF92YWwgKnZhbCkKPiAgIAl1OCBw
b3J0czsKPiAgIAlpbnQgaTsKPiAgIAo+IC0JaWYgKHZhbC0+cG9ydF92bGFuID49IEFSOFgxNl9N
QVhfVkxBTlMpCj4gKwlpZiAodmFsLT5wb3J0X3ZsYW4gPj0gZGV2LT52bGFucykKPiAgIAkJcmV0
dXJuIC1FSU5WQUw7Cj4gICAKPiAgIAlwb3J0cyA9IHByaXYtPnZsYW5fdGFibGVbdmFsLT5wb3J0
X3ZsYW5dOwo+IEBAIC0xMjc3LDcgKzEyNzcsNyBAQCBhcjh4eHhfc3dfc2V0X3BvcnRzKHN0cnVj
dCBzd2l0Y2hfZGV2ICpkZXYsIHN0cnVjdCBzd2l0Y2hfdmFsICp2YWwpCj4gICAKPiAgIAkJCS8q
IG1ha2Ugc3VyZSB0aGF0IGFuIHVudGFnZ2VkIHBvcnQgZG9lcyBub3QKPiAgIAkJCSAqIGFwcGVh
ciBpbiBvdGhlciB2bGFucyAqLwo+IC0JCQlmb3IgKGogPSAwOyBqIDwgQVI4WDE2X01BWF9WTEFO
UzsgaisrKSB7Cj4gKwkJCWZvciAoaiA9IDA7IGogPCBkZXYtPnZsYW5zOyBqKyspIHsKPiAgIAkJ
CQlpZiAoaiA9PSB2YWwtPnBvcnRfdmxhbikKPiAgIAkJCQkJY29udGludWU7Cj4gICAJCQkJcHJp
di0+dmxhbl90YWJsZVtqXSAmPSB+KDEgPDwgcC0+aWQpOwo+IEBAIC0xMzU2LDcgKzEzNTYsNyBA
QCBhcjh4eHhfc3dfaHdfYXBwbHkoc3RydWN0IHN3aXRjaF9kZXYgKmRldikKPiAgIAlpZiAoIXBy
aXYtPmluaXQpIHsKPiAgIAkJLyogY2FsY3VsYXRlIHRoZSBwb3J0IGRlc3RpbmF0aW9uIG1hc2tz
IGFuZCBsb2FkIHZsYW5zCj4gICAJCSAqIGludG8gdGhlIHZsYW4gdHJhbnNsYXRpb24gdW5pdCAq
Lwo+IC0JCWZvciAoaiA9IDA7IGogPCBBUjhYMTZfTUFYX1ZMQU5TOyBqKyspIHsKPiArCQlmb3Ig
KGogPSAwOyBqIDwgZGV2LT52bGFuczsgaisrKSB7Cj4gICAJCQl1OCB2cCA9IHByaXYtPnZsYW5f
dGFibGVbal07Cj4gICAKPiAgIAkJCWlmICghdnApCj4gQEAgLTE0MDksNyArMTQwOSw3IEBAIGFy
OHh4eF9zd19yZXNldF9zd2l0Y2goc3RydWN0IHN3aXRjaF9kZXYgKmRldikKPiAgIAltZW1zZXQo
JnByaXYtPnZsYW4sIDAsIHNpemVvZihzdHJ1Y3QgYXI4eHh4X3ByaXYpIC0KPiAgIAkJb2Zmc2V0
b2Yoc3RydWN0IGFyOHh4eF9wcml2LCB2bGFuKSk7Cj4gICAKPiAtCWZvciAoaSA9IDA7IGkgPCBB
UjhYMTZfTUFYX1ZMQU5TOyBpKyspCj4gKwlmb3IgKGkgPSAwOyBpIDwgZGV2LT52bGFuczsgaSsr
KQo+ICAgCQlwcml2LT52bGFuX2lkW2ldID0gaTsKPiAgIAo+ICAgCS8qIENvbmZpZ3VyZSBhbGwg
cG9ydHMgKi8KPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVy
cy9uZXQvcGh5L2FyODIxNi5oIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9u
ZXQvcGh5L2FyODIxNi5oCj4gaW5kZXggOTMxNzBkNTg2My4uYmYzNGZkYjc3NSAxMDA2NDQKPiAt
LS0gYS90YXJnZXQvbGludXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL25ldC9waHkvYXI4MjE2LmgK
PiArKysgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL25ldC9waHkvYXI4MjE2
LmgKPiBAQCAtMzEsNiArMzEsOSBAQAo+ICAgCj4gICAvKiBzaXplIG9mIHRoZSB2bGFuIHRhYmxl
ICovCj4gICAjZGVmaW5lIEFSOFgxNl9NQVhfVkxBTlMJMTI4Cj4gKyNkZWZpbmUgQVI4M1g3X01B
WF9WTEFOUwk0MDk2Cj4gKyNkZWZpbmUgQVI4WFhYX01BWF9WTEFOUwlBUjgzWDdfTUFYX1ZMQU5T
Cj4gKwo+ICAgI2RlZmluZSBBUjhYMTZfUFJPQkVfUkVUUklFUwkxMAo+ICAgI2RlZmluZSBBUjhY
MTZfTUFYX1BPUlRTCTgKPiAgIAo+IEBAIC01MDQsOCArNTA3LDkgQEAgc3RydWN0IGFyOHh4eF9w
cml2IHsKPiAgIAo+ICAgCS8qIGFsbCBmaWVsZHMgYmVsb3cgYXJlIGNsZWFyZWQgb24gcmVzZXQg
Ki8KPiAgIAlib29sIHZsYW47Cj4gLQl1MTYgdmxhbl9pZFtBUjhYMTZfTUFYX1ZMQU5TXTsKPiAt
CXU4IHZsYW5fdGFibGVbQVI4WDE2X01BWF9WTEFOU107Cj4gKwo+ICsJdTE2IHZsYW5faWRbQVI4
WFhYX01BWF9WTEFOU107Cj4gKwl1OCB2bGFuX3RhYmxlW0FSOFhYWF9NQVhfVkxBTlNdOwo+ICAg
CXU4IHZsYW5fdGFnZ2VkOwo+ICAgCXUxNiBwdmlkW0FSOFgxNl9NQVhfUE9SVFNdOwo+ICAgCWlu
dCBhcmxfYWdlX3RpbWU7Cj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW5lcmljL2ZpbGVz
L2RyaXZlcnMvbmV0L3BoeS9hcjgzMjcuYyBiL3RhcmdldC9saW51eC9nZW5lcmljL2ZpbGVzL2Ry
aXZlcnMvbmV0L3BoeS9hcjgzMjcuYwo+IGluZGV4IDE4Nzg1ODViMGMuLjRjYmZhNGQyMzQgMTAw
NjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9uZXQvcGh5L2Fy
ODMyNy5jCj4gKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9uZXQvcGh5
L2FyODMyNy5jCj4gQEAgLTE0ODEsNyArMTQ4MSw3IEBAIGNvbnN0IHN0cnVjdCBhcjh4eHhfY2hp
cCBhcjgzMjdfY2hpcCA9IHsKPiAgIAo+ICAgCS5uYW1lID0gIkF0aGVyb3MgQVI4MzI3IiwKPiAg
IAkucG9ydHMgPSBBUjgzMjdfTlVNX1BPUlRTLAo+IC0JLnZsYW5zID0gQVI4WDE2X01BWF9WTEFO
UywKPiArCS52bGFucyA9IEFSODNYN19NQVhfVkxBTlMsCj4gICAJLnN3b3BzID0gJmFyODMyN19z
d19vcHMsCj4gICAKPiAgIAkucmVnX3BvcnRfc3RhdHNfc3RhcnQgPSAweDEwMDAsCj4gQEAgLTE1
MTgsNyArMTUxOCw3IEBAIGNvbnN0IHN0cnVjdCBhcjh4eHhfY2hpcCBhcjgzMzdfY2hpcCA9IHsK
PiAgIAo+ICAgCS5uYW1lID0gIkF0aGVyb3MgQVI4MzM3IiwKPiAgIAkucG9ydHMgPSBBUjgzMjdf
TlVNX1BPUlRTLAo+IC0JLnZsYW5zID0gQVI4WDE2X01BWF9WTEFOUywKPiArCS52bGFucyA9IEFS
ODNYN19NQVhfVkxBTlMsCj4gICAJLnN3b3BzID0gJmFyODMyN19zd19vcHMsCj4gICAKPiAgIAku
cmVnX3BvcnRfc3RhdHNfc3RhcnQgPSAweDEwMDAsCj4gCgotLSAKVW5kIGltIMO8YnJpZ2VuIGJp
biBpY2ggZGVyIE1laW51bmcsIGRhc3MgR2Vyw6R0ZSBtaXQgd2VuaWdlciBhbHMgOE1CIApGbGFz
aCB1bmQgNjRNQiBSQU0gemVyc3TDtnJ0IHdlcmRlbiBtw7xzc2VuLgotLSBmcmVpIG5hY2ggTWFy
Y3VzIFBvcmNpb3VzIENhdG8gZGVyIMOEbHRlcmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
