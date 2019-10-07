Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404B1CDE8E
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 12:00:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0vb5Oirf7mbaBRewJ4bQ/mX96QKVgKA6uV8X5n4223Q=; b=JcaD9ENAUfcoO6UsJkNpmsLlh
	UOQr7OI6yszVC/he1jQ89tLf7XG6zVVoOlkQMRnGY1OQ7THPFKkHWEI15siAO6F+05Q3xf5eG0YX5
	towaW4+9GlCE9OiDIHgbTPx5xZVKEiSOY1DBUGLE8G6jDbX8TSYTuiPVA1cdAG/fNmttLmzla5Ed5
	qxUAaly73A4D16PCTPX5i4dULFaBWlbFzWF5vuH1uuOBvtSf01Y8Hav6A7UEqTLZdnYe9G2Yd/AHf
	0Fd9vKSWcqV9ipEtMgRtZlcvvnjSCCMJIpVT3m+2405yPbNUaGkt62NO9vdVubwqsrNGO0QcdlF6n
	3rHsrCO2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPns-0002m2-9Y; Mon, 07 Oct 2019 09:59:44 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPnk-0002lf-Cx
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 09:59:38 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 00446C0002;
 Mon,  7 Oct 2019 09:59:21 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20191007082204.30380-1-ynezz@true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <b1adff80-fb35-9c66-34d8-e25a51a39191@aparcar.org>
Date: Sun, 6 Oct 2019 23:59:19 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191007082204.30380-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_025936_574419_33F6E93B 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: make UBNT Nano/Loco AC factory
 images reproducible
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

T24gMTAvNi8xOSAxMDoyMiBQTSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBDdXJyZW50IGZhY3Rv
cnkgaW1hZ2VzIGFyZSBidWlsdCBvbiB0b3Agb2Ygc3lzdXBncmFkZSBpbWFnZXMgd2hpY2gKPiBj
b250YWlucyBtZXRhZGF0YSB3aGljaCBhcmUgY2F1c2luZyBpbWFnZSByZXByb2R1Y2liaWxpdHkg
aXNzdWVzLCBzbwo+IGxldCdzIGJ1aWxkIGZhY3RvcnkgaW1hZ2VzIGZyb20gdGhlIHNjcmF0Y2gu
IFdoaWxlIGF0IGl0LCByZWZhY3RvciB0aGUKPiBzaGFyZWQgdmFycyBpbnRvIGNvbW1vbiBiYXNl
IGFzIHdlbGwuCgpDb21waWxlZCBhbmQgdGhlIHNpZ25hdHVyZSBpcyAob2J2aW91c2x5KSBnb25l
LCBwZXJmZWN0IQoKQ2FuJ3QgZG8gYW55IHJ1bnRpbWUgdGVzdHMsIGJ1dCBJIGd1ZXNzIGl0J3Mg
Z29vZCBmb3IgbWVyZ2luZyEKClRoYW5rcyBmb3IgdGhlIHF1aWNrIHJlc3BvbnNlIQoKUGF1bAoK
Pgo+IFJlZjogaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL29wZW53cnQtZGV2
ZWwvMjAxOS1PY3RvYmVyLzAxOTIwNS5odG1sCj4gUmVwb3J0ZWQtYnk6IFBhdWwgU3Bvb3JlbiA8
bWFpbEBhcGFyY2FyLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0
cnVlLmN6Pgo+IC0tLQo+ICAgdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMtdWJudC5t
ayB8IDI0ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9hdGg3OS9pbWFnZS9nZW5lcmljLXVibnQubWsgYi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2Uv
Z2VuZXJpYy11Ym50Lm1rCj4gaW5kZXggNmFlNzY2ZTI5MzMxLi45YWIxMTMyNGI0MTEgMTAwNjQ0
Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2dlbmVyaWMtdWJudC5tawo+ICsrKyBi
L3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9nZW5lcmljLXVibnQubWsKPiBAQCAtMTE0LDQwICsx
MTQsNDAgQEAgZGVmaW5lIERldmljZS91Ym50X2J1bGxldC1tLXh3Cj4gICBlbmRlZgo+ICAgVEFS
R0VUX0RFVklDRVMgKz0gdWJudF9idWxsZXQtbS14dwo+ICAgCj4gK2RlZmluZSBEZXZpY2UvdWJu
dC1uYW5vLWFjCj4gKyAgREVWSUNFX1BBQ0tBR0VTICs9IGttb2QtYXRoMTBrLWN0IGF0aDEway1m
aXJtd2FyZS1xY2E5ODh4LWN0Cj4gKyAgSU1BR0VfU0laRSA6PSAxNTc0NGsKPiArICBJTUFHRS9m
YWN0b3J5LmJpbiA6PSBhcHBlbmQta2VybmVsIHwgcGFkLXRvICQkJCQoQkxPQ0tTSVpFKSB8IFwK
PiArCWFwcGVuZC1yb290ZnMgfCBwYWQtcm9vdGZzIHwgbWt1Ym50aW1hZ2Utc3BsaXQgfCBcCj4g
KwljaGVjay1zaXplICQkJCQoSU1BR0VfU0laRSkKPiArZW5kZWYKPiArCj4gICBkZWZpbmUgRGV2
aWNlL3VibnRfbGFwLTEyMAo+ICAgICAkKERldmljZS91Ym50LXdhKQo+ICAgICBERVZJQ0VfTU9E
RUwgOj0gTGl0ZUFQIGFjCj4gICAgIERFVklDRV9WQVJJQU5UIDo9IExBUC0xMjAKPiAtICBERVZJ
Q0VfUEFDS0FHRVMgKz0ga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFjYTk4OHgtY3QK
PiAtICBJTUFHRV9TSVpFIDo9IDE1NzQ0awo+IC0gIElNQUdFL2ZhY3RvcnkuYmluIDo9ICQkKElN
QUdFL3N5c3VwZ3JhZGUuYmluKSB8IG1rdWJudGltYWdlLXNwbGl0Cj4gKyAgJChEZXZpY2UvdWJu
dC1uYW5vLWFjKQo+ICAgZW5kZWYKPiAgIFRBUkdFVF9ERVZJQ0VTICs9IHVibnRfbGFwLTEyMAo+
ICAgCj4gICBkZWZpbmUgRGV2aWNlL3VibnRfbmFub2JlYW0tYWMKPiAgICAgJChEZXZpY2UvdWJu
dC13YSkKPiAgICAgREVWSUNFX01PREVMIDo9IE5hbm9CZWFtIEFDCj4gLSAgREVWSUNFX1BBQ0tB
R0VTICs9IGttb2QtYXRoMTBrLWN0IGF0aDEway1maXJtd2FyZS1xY2E5ODh4LWN0Cj4gLSAgSU1B
R0VfU0laRSA6PSAxNTc0NGsKPiAtICBJTUFHRS9mYWN0b3J5LmJpbiA6PSAkJChJTUFHRS9zeXN1
cGdyYWRlLmJpbikgfCBta3VibnRpbWFnZS1zcGxpdAo+ICsgICQoRGV2aWNlL3VibnQtbmFuby1h
YykKPiAgIGVuZGVmCj4gICBUQVJHRVRfREVWSUNFUyArPSB1Ym50X25hbm9iZWFtLWFjCj4gICAK
PiAgIGRlZmluZSBEZXZpY2UvdWJudF9uYW5vc3RhdGlvbi1hYwo+ICAgICAkKERldmljZS91Ym50
LXdhKQo+ICAgICBERVZJQ0VfTU9ERUwgOj0gTmFub3N0YXRpb24gQUMKPiAtICBERVZJQ0VfUEFD
S0FHRVMgKz0ga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFjYTk4OHgtY3QKPiAtICBJ
TUFHRV9TSVpFIDo9IDE1NzQ0awo+IC0gIElNQUdFL2ZhY3RvcnkuYmluIDo9ICQkKElNQUdFL3N5
c3VwZ3JhZGUuYmluKSB8IG1rdWJudGltYWdlLXNwbGl0Cj4gKyAgJChEZXZpY2UvdWJudC1uYW5v
LWFjKQo+ICAgZW5kZWYKPiAgIFRBUkdFVF9ERVZJQ0VTICs9IHVibnRfbmFub3N0YXRpb24tYWMK
PiAgIAo+ICAgZGVmaW5lIERldmljZS91Ym50X25hbm9zdGF0aW9uLWFjLWxvY28KPiAgICAgJChE
ZXZpY2UvdWJudC13YSkKPiAgICAgREVWSUNFX01PREVMIDo9IE5hbm9zdGF0aW9uIEFDIGxvY28K
PiAtICBERVZJQ0VfUEFDS0FHRVMgKz0ga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFj
YTk4OHgtY3QKPiAtICBJTUFHRV9TSVpFIDo9IDE1NzQ0awo+IC0gIElNQUdFL2ZhY3RvcnkuYmlu
IDo9ICQkKElNQUdFL3N5c3VwZ3JhZGUuYmluKSB8IG1rdWJudGltYWdlLXNwbGl0Cj4gKyAgJChE
ZXZpY2UvdWJudC1uYW5vLWFjKQo+ICAgZW5kZWYKPiAgIFRBUkdFVF9ERVZJQ0VTICs9IHVibnRf
bmFub3N0YXRpb24tYWMtbG9jbwo+ICAgCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
